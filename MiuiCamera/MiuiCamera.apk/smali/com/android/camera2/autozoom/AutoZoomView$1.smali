.class public Lcom/android/camera2/autozoom/AutoZoomView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/autozoom/AutoZoomView;->setViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/autozoom/AutoZoomView;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/autozoom/AutoZoomView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iput p2, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iget v1, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
