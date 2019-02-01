#pragma once

#include <CryEntitySystem/IEntity.h>
#include <CryEntitySystem/IEntityComponent.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CryEntitySystem/IEntitySystem.h>

class collectableObject	: public IEntityComponent
{
public:
	

	static void Register(Schematyc::IEnvRegistrar& registrar);
	static void ReflectType(Schematyc::CTypeDesc<collectableObject>& desc)
	{
		desc.SetGUID("{12970526-7C0B-4FD8-BEB5-B5D027F6A368}"_cry_guid);
		desc.SetLabel("collectableObject");
	}

	virtual void Initialize();
	virtual void ProcessEvent(const SEntityEvent& event);
	virtual Cry::Entity::EntityEventMask GetEventMask() const;
	void CreateExplosionEffect();

	
	private:
		Vec3 m_collisionPoint = Vec3(ZERO);
		bool m_isCollided = false;
		float m_timer = 0.0f;

};