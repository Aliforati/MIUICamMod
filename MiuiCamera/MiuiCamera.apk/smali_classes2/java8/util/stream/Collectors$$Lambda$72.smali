.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$72;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field public final arg$1:Ljava8/util/stream/Collector;


# direct methods
.method public constructor <init>(Ljava8/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$72;->arg$1:Ljava8/util/stream/Collector;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/Collector;)Ljava8/util/function/Function;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$72;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$72;-><init>(Ljava8/util/stream/Collector;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$72;->arg$1:Ljava8/util/stream/Collector;

    check-cast p1, Ljava8/util/stream/Collectors$Partition;

    invoke-static {v0, p1}, Ljava8/util/stream/Collectors;->lambda$partitioningBy$67(Ljava8/util/stream/Collector;Ljava8/util/stream/Collectors$Partition;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
