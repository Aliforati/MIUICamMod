.class public final Ljava8/util/concurrent/ForkJoinPool$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/ForkJoinPool;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$1;->run()Ljava8/util/concurrent/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinPool;
    .locals 3

    new-instance v0, Ljava8/util/concurrent/ForkJoinPool;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/util/concurrent/ForkJoinPool;-><init>(BLjava8/util/concurrent/ForkJoinPool$1;)V

    return-object v0
.end method
