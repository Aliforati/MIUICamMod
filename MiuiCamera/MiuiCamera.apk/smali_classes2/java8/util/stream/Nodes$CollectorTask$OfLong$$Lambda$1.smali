.class public final synthetic Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/LongFunction;


# static fields
.field public static final instance:Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;->instance:Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/LongFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;->instance:Ljava8/util/stream/Nodes$CollectorTask$OfLong$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public apply(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ljava8/util/stream/Nodes;->longBuilder(J)Ljava8/util/stream/Node$Builder$OfLong;

    move-result-object p1

    return-object p1
.end method
