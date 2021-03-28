.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;->enqueueEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

.field public final synthetic val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-static {v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;->access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V

    return-void
.end method
