.class public Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;
.super Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.source ""


# instance fields
.field public data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-object v0
.end method

.method public setData(Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-void
.end method
