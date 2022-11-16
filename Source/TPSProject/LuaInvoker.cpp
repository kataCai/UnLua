#include "LuaInvoker.h"
#include "Kismet/GameplayStatics.h"

bool ULuaInvoker::IsObjectValid(const UObject* object)
{
	return IsValid(object);
}

FTransform ULuaInvoker::GetActorTransform(const AActor* actor)
{
	if (actor == nullptr)
	{
		return FTransform::Identity;
	}

	return actor->GetTransform();
}
