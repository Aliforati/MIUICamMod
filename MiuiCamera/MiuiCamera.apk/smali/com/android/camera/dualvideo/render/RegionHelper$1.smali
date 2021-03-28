.class public Lcom/android/camera/dualvideo/render/RegionHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/RegionHelper;->setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/RegionHelper;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$1;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$1;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {p1, p4}, Lcom/android/camera/dualvideo/render/RegionHelper;->access$002(Lcom/android/camera/dualvideo/render/RegionHelper;F)F

    return-void
.end method
