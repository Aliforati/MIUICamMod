.class public LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "LOooO0O0/OooO00o/OooO00o/OooOOO<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOOO;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOOOO;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-static {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;LOooO0O0/OooO00o/OooO00o/OooOOO;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    new-instance v2, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {v2, v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;LOooO0O0/OooO00o/OooO00o/OooOOO;)V

    :goto_1
    return-void
.end method
