.class public abstract Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "AbstractWatermarkData"

.field public static mAllWatermarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    new-instance v1, Lcom/android/camera/aiwatermark/parser/AIWatermarkParser;

    invoke-direct {v1}, Lcom/android/camera/aiwatermark/parser/AIWatermarkParser;-><init>()V

    sget-object v2, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->TAG:Ljava/lang/String;

    const-string v3, "parser start"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mAllWatermarks:Ljava/util/ArrayList;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o0OoO()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00OoOoO()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mAllWatermarks:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/camera/aiwatermark/parser/AbstractParser;->parseByPattern(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllWatermarks.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mAllWatermarks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->TAG:Ljava/lang/String;

    const-string v1, "parser end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getForAI()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForManual()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public getWatermarkByType(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    sget-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWatermarkByType type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mLock:Ljava/lang/Object;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mLock:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->mAllWatermarks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWatermarkByType list.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
