.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    :goto_0
    return-void
.end method
