.class public Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;
.super Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/download/DownloadView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/sticker/download/DownloadView$3;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;->this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    iget-object p1, p1, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;Lcom/android/camera/fragment/sticker/download/DownloadView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;->this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    iget-object p1, p1, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    new-instance v0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1$1;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;)V

    invoke-static {p1, p1, v0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->access$500(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
