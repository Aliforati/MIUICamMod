.class public Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/ForkJoinPool;)Ljava8/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/ForkJoinWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

.field public final synthetic val$pool:Ljava8/util/concurrent/ForkJoinPool;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/ForkJoinWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinWorkerThread;
    .locals 3

    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
