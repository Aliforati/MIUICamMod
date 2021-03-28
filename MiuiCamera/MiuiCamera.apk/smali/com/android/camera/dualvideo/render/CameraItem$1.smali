.class public Lcom/android/camera/dualvideo/render/CameraItem$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/CameraItem;->enterOrExit(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$000(Lcom/android/camera/dualvideo/render/CameraItem;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    int-to-float p1, p3

    const p2, 0x3e19999a    # 0.15f

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    const p2, 0x3f59999a    # 0.85f

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance p3, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->rect:Landroid/graphics/Rect;

    invoke-direct {p3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p2, p3, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$100(Lcom/android/camera/dualvideo/render/CameraItem;Landroid/graphics/Rect;F)V

    return-void
.end method
