.class public Lio/reactivex/internal/disposables/FullArbiterWip;
.super Lio/reactivex/internal/disposables/FullArbiterPad0;
.source ""


# instance fields
.field public final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/internal/disposables/FullArbiterPad0;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/disposables/FullArbiterWip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
