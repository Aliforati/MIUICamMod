.class public final synthetic Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/DoubleUnaryOperator;


# static fields
.field public static final instance:Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;->instance:Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/DoubleUnaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;->instance:Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public applyAsDouble(D)D
    .locals 0

    invoke-static {p1, p2}, Ljava8/util/function/DoubleUnaryOperators;->lambda$identity$128(D)D

    move-result-wide p1

    return-wide p1
.end method
