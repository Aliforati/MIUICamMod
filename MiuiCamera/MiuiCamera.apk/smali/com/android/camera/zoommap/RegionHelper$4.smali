.class public Lcom/android/camera/zoommap/RegionHelper$4;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/zoommap/RegionHelper;->moveToEdge()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/zoommap/RegionHelper;


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/RegionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$4;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$4;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1, p3}, Lcom/android/camera/zoommap/RegionHelper;->access$402(Lcom/android/camera/zoommap/RegionHelper;I)I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$4;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/zoommap/RegionHelper;->access$300(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/zoommap/RegionHelper$4;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p2}, Lcom/android/camera/zoommap/RegionHelper;->access$400(Lcom/android/camera/zoommap/RegionHelper;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
