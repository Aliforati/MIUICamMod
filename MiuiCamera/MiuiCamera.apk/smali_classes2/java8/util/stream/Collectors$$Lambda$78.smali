.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$78;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$78;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$78;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$78;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$78;->instance:Ljava8/util/stream/Collectors$$Lambda$78;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$78;->instance:Ljava8/util/stream/Collectors$$Lambda$78;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava8/util/LongSummaryStatistics;

    check-cast p2, Ljava8/util/LongSummaryStatistics;

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors;->lambda$summarizingLong$73(Ljava8/util/LongSummaryStatistics;Ljava8/util/LongSummaryStatistics;)Ljava8/util/LongSummaryStatistics;

    move-result-object p1

    return-object p1
.end method
