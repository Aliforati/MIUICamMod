.class public Lcom/android/camera/timerburst/TimerBurstSeekBar$2;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-static {p1, p3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->access$102(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
