.class public Lcom/ss/android/ugc/effectmanager/EffectManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/EffectManager;->initRepository()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$1;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateEffectChannel(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$1;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object v0, v0, Lcom/ss/android/ugc/effectmanager/EffectManager;->mEffectStore:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->updateEffectChannel(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    return-void
.end method
