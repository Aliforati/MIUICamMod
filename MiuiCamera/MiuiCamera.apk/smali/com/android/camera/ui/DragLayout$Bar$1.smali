.class public Lcom/android/camera/ui/DragLayout$Bar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/DragLayout$Bar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/DragLayout$Bar;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/DragLayout$Bar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout$Bar;->access$1302(Lcom/android/camera/ui/DragLayout$Bar;F)F

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout$Bar;->access$1500(Lcom/android/camera/ui/DragLayout$Bar;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayout$Bar;->access$1600(Lcom/android/camera/ui/DragLayout$Bar;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout$Bar;->access$1402(Lcom/android/camera/ui/DragLayout$Bar;F)F

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout$Bar;->access$1700(Lcom/android/camera/ui/DragLayout$Bar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    const/high16 v1, -0x3f800000    # -4.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    const/high16 v1, 0x41000000    # 8.0f

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/camera/ui/DragLayout$Bar;->access$1802(Lcom/android/camera/ui/DragLayout$Bar;F)F

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar$1;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
