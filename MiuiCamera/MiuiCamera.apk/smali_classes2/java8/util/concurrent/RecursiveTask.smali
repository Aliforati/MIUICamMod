.class public abstract Ljava8/util/concurrent/RecursiveTask;
.super Ljava8/util/concurrent/ForkJoinTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x489d692599075496L


# instance fields
.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final exec()Z
    .locals 1

    invoke-virtual {p0}, Ljava8/util/concurrent/RecursiveTask;->compute()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    return-void
.end method
