.class public abstract Ljava8/util/stream/MatchOps$BooleanTerminalSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BooleanTerminalSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Sink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public stop:Z

.field public value:Z


# direct methods
.method public constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    iget-boolean v0, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    return v0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public getAndClearState()Z
    .locals 1

    iget-boolean v0, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    return v0
.end method
