.class public abstract Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;
.super Ljava8/util/stream/Nodes$AbstractConcNode;
.source ""

# interfaces
.implements Ljava8/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava8/util/stream/Nodes$AbstractConcNode<",
        "TE;TT_NODE;>;",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$AbstractConcNode;-><init>(Ljava8/util/stream/Node;Ljava8/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TE;>;)[TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava8/util/stream/Node$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    check-cast v0, Ljava8/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->right:Ljava8/util/stream/Node;

    check-cast v0, Ljava8/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    check-cast v1, Ljava8/util/stream/Node$OfPrimitive;

    invoke-interface {v1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    check-cast v0, Ljava8/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->right:Ljava8/util/stream/Node;

    check-cast v0, Ljava8/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/Nodes$AbstractConcNode;->getChild(I)Ljava8/util/stream/Node;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfPrimitive;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    aput-object v2, v0, v1

    iget-object v1, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->right:Ljava8/util/stream/Node;

    aput-object v1, v0, v3

    const-string v1, "%s[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
