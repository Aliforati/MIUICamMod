.class public final Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;
.super Ljava8/util/concurrent/ForkJoinTask;
.source ""

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
