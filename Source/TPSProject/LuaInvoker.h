#pragma once
#include "LuaInvoker.generated.h"

/**
 * Lua调用C++的中间件，这些底层组件都是不能在蓝图中通过反射调用获得的。
 */
UCLASS()
class TPSPROJECT_API ULuaInvoker : public UObject
{
	GENERATED_BODY()

public:

	UFUNCTION(BlueprintCallable, Category = LuaInvoker)
    static bool IsObjectValid(const UObject* object);

	UFUNCTION(BlueprintCallable, Category = LuaInvoker)
	static FTransform GetActorTransform(const AActor* actor);
};
