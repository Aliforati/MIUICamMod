.class public final synthetic Ljava8/util/stream/IntPipeline$$Lambda$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/ObjIntConsumer;


# static fields
.field public static final instance:Ljava8/util/stream/IntPipeline$$Lambda$10;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/IntPipeline$$Lambda$10;

    invoke-direct {v0}, Ljava8/util/stream/IntPipeline$$Lambda$10;-><init>()V

    sput-object v0, Ljava8/util/stream/IntPipeline$$Lambda$10;->instance:Ljava8/util/stream/IntPipeline$$Lambda$10;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ObjIntConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/IntPipeline$$Lambda$10;->instance:Ljava8/util/stream/IntPipeline$$Lambda$10;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava8/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Ljava8/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method
