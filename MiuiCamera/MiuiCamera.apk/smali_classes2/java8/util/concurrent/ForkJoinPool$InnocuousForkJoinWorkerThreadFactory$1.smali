.class public Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/ForkJoinPool;)Ljava8/util/concurrent/ForkJoinWorkerThread;
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
.field public final synthetic this$0:Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

.field public final synthetic val$pool:Ljava8/util/concurrent/ForkJoinPool;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/ForkJoinWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinWorkerThread;
    .locals 2

    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;

    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {v0, v1}, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;)V

    return-object v0
.end method
