.class public final synthetic Ljava8/util/function/IntUnaryOperators$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/IntUnaryOperator;


# instance fields
.field public final arg$1:Ljava8/util/function/IntUnaryOperator;

.field public final arg$2:Ljava8/util/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/IntUnaryOperators$$Lambda$2;->arg$1:Ljava8/util/function/IntUnaryOperator;

    iput-object p2, p0, Ljava8/util/function/IntUnaryOperators$$Lambda$2;->arg$2:Ljava8/util/function/IntUnaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntUnaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/function/IntUnaryOperators$$Lambda$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/IntUnaryOperators$$Lambda$2;-><init>(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Ljava8/util/function/IntUnaryOperators$$Lambda$2;->arg$1:Ljava8/util/function/IntUnaryOperator;

    iget-object v1, p0, Ljava8/util/function/IntUnaryOperators$$Lambda$2;->arg$2:Ljava8/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava8/util/function/IntUnaryOperators;->lambda$andThen$113(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;I)I

    move-result p1

    return p1
.end method
