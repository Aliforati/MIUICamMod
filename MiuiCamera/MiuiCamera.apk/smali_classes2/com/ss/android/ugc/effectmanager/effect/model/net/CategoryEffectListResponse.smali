.class public Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;
.super Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.source ""


# instance fields
.field public data:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;->getCategoryEffects()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;

    return-object v0
.end method

.method public setData(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;

    return-void
.end method
