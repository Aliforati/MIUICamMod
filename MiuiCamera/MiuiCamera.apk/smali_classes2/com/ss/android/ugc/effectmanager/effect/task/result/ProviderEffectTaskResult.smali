.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source ""


# instance fields
.field public effectListResponse:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

.field public exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->effectListResponse:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getEffectListResponse()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->effectListResponse:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    return-object v0
.end method

.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object v0
.end method

.method public setEffectListResponse(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->effectListResponse:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    return-void
.end method

.method public setException(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method
