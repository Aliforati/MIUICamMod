.class public Ljava8/util/stream/MatchOps$1MatchSink;
.super Ljava8/util/stream/MatchOps$BooleanTerminalSink;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/MatchOps;->makeRef(Ljava8/util/function/Predicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/MatchOps$BooleanTerminalSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

.field public final synthetic val$predicate:Ljava8/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava8/util/function/Predicate;

    invoke-direct {p0, p1}, Ljava8/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava8/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Ljava8/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava8/util/stream/MatchOps$MatchKind;->access$000(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    iget-object p1, p0, Ljava8/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    :cond_0
    return-void
.end method
