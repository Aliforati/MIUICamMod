.class public Lcom/android/camera/animation/AnimationMonitor$AnimationMonitorContainer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/AnimationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationMonitorContainer"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/animation/AnimationMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/animation/AnimationMonitor;

    invoke-direct {v0}, Lcom/android/camera/animation/AnimationMonitor;-><init>()V

    sput-object v0, Lcom/android/camera/animation/AnimationMonitor$AnimationMonitorContainer;->sInstance:Lcom/android/camera/animation/AnimationMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/camera/animation/AnimationMonitor;
    .locals 1

    sget-object v0, Lcom/android/camera/animation/AnimationMonitor$AnimationMonitorContainer;->sInstance:Lcom/android/camera/animation/AnimationMonitor;

    return-object v0
.end method
