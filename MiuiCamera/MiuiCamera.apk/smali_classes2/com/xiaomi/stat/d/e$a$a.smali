.class public final Lcom/xiaomi/stat/d/e$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x7530


# instance fields
.field public b:Z

.field public c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/stat/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/stat/d/e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    if-nez v0, :cond_2

    monitor-enter p0

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    return-void
.end method
