#include "StdAfx.h"
#include "collectableObject.h"
#include "Player.h"

#include <string.h>
#include <CryRenderer/IRenderAuxGeom.h>
#include <CryParticleSystem/IParticles.h>
#include <CryParticleSystem/ParticleParams.h>


void collectableObject::Register(Schematyc::IEnvRegistrar & registrar)
{
	Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
	{
		Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(collectableObject));
		{
		}
	}
}
CRY_STATIC_AUTO_REGISTER_FUNCTION(&collectableObject::Register)


void collectableObject::Initialize()
{
	CryLog("XOrbit::Initialize");
}

void PurgeDeferredCollisionEvents(bool bForce = false) {

}


void collectableObject::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case ENTITY_EVENT_INIT: {
		
	}
	break;
	case ENTITY_EVENT_COLLISION:
	{
		EventPhysCollision *pCollision = (EventPhysCollision *)(event.nParam[0]);
		if (nullptr == pCollision) return;

		IEntity* pDest_0 = gEnv->pEntitySystem->GetEntityFromPhysics(pCollision->pEntity[0]);
		IEntity* pDest_1 = gEnv->pEntitySystem->GetEntityFromPhysics(pCollision->pEntity[1]);

		/*CryLog("pDest_0 : %s", pDest_0->GetName());
		CryLog("pDest_1 : %s", pDest_1->GetName());
*/
		if (pDest_0 != nullptr && strstr(pDest_0->GetName(), "Player") ||
			pDest_1 != nullptr && strstr(pDest_1->GetName(), "Player"))
		{
			++CPlayerComponent::score;
			m_collisionPoint = pCollision->pt;
			m_isCollided = true;
			m_pEntity->Hide(true);
			CryLog("collision happend...");
			CreateExplosionEffect();
		}
	}
	break;
	case ENTITY_EVENT_UPDATE:
	{
		static const float t_value = 2.0f;
	
		if (m_isCollided && m_timer < t_value)
		{
			m_timer = m_timer + gEnv->pTimer->GetFrameTime();
			//IRenderAuxGeom::GetAux()->DrawSphere(m_collisionPoint, 0.5f, Col_Red); // çarpışma olan noktada küre çizdiriyor
			// patlama efektinin etkisiyle diğer nesnelerin hareketini simulate ediyor
			gEnv->pPhysicalWorld->SimulateExplosion(m_collisionPoint, m_collisionPoint, 2.f, 5.f, 2.f, 10.f);
		}

		if (m_isCollided && m_timer >= t_value)
		{
			m_collisionPoint.Set(0.f, 0.f, 0.f);
			m_isCollided = false;
			m_timer = 0.0f;
			CryLog("sıfırlama....");
		}	
	}
	break;
	}
}


Cry::Entity::EntityEventMask collectableObject::GetEventMask() const
{
	return ENTITY_EVENT_BIT(ENTITY_EVENT_UPDATE) | ENTITY_EVENT_BIT(ENTITY_EVENT_INIT) | ENTITY_EVENT_BIT(ENTITY_EVENT_COLLISION);
}

void collectableObject::CreateExplosionEffect()
{
	IParticleEffect*  m_pEffect = gEnv->pParticleManager->FindEffect("particles/pfx2/explosion_glass.pfx");

	if (m_pEffect) {
		m_pEffect->Spawn(true, m_collisionPoint);
	}
	else {
		CryLog("bulunamadı...%d", m_pEffect);
	}

}

