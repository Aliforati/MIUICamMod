.class public Lcom/android/gallery3d/ui/GLThread$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/GLThread;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/gallery3d/ui/GLThread;

.field public final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLThread;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread$3;->this$0:Lcom/android/gallery3d/ui/GLThread;

    iput-object p2, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
