.class public final Ljava8/util/stream/FindOps$FindSink$OfInt;
.super Ljava8/util/stream/FindOps$FindSink;
.source ""

# interfaces
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/FindOps$FindSink<",
        "Ljava/lang/Integer;",
        "Ljava8/util/OptionalInt;",
        ">;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/stream/FindOps$FindSink$OfInt;->get()Ljava8/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava8/util/OptionalInt;
    .locals 1

    iget-boolean v0, p0, Ljava8/util/stream/FindOps$FindSink;->hasValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava8/util/OptionalInt;->of(I)Ljava8/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
