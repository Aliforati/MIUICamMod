.class public Lcom/android/camera/dualvideo/render/MiscTextureManager$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/MiscTextureManager;->animTexTransMatrix(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final srcRotation:I

.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field public final synthetic val$realDiff:I


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->this$0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iput p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->val$realDiff:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->this$0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->access$000(Lcom/android/camera/dualvideo/render/MiscTextureManager;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->srcRotation:I

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    int-to-float p1, p3

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->val$realDiff:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->srcRotation:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->this$0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->access$100(Lcom/android/camera/dualvideo/render/MiscTextureManager;)[F

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;->this$0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->access$100(Lcom/android/camera/dualvideo/render/MiscTextureManager;)[F

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->rotateTexTransMatrix([FI)V

    return-void
.end method
