.class public interface abstract Lcom/ss/android/vesdk/runtime/cloudconfig/IInjector;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract inject(Ljava/util/Map;Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;",
            ")V"
        }
    .end annotation
.end method

.method public abstract parse(Lorg/json/JSONObject;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
