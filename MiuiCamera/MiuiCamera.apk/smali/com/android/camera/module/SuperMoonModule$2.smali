.class public Lcom/android/camera/module/SuperMoonModule$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$2;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "run: hide delay number in main thread"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$2;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    return-void
.end method
