.class public final synthetic Ljava8/util/function/BinaryOperators$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# instance fields
.field public final arg$1:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/BinaryOperators$$Lambda$2;->arg$1:Ljava/util/Comparator;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/function/BinaryOperators$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/function/BinaryOperators$$Lambda$2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/function/BinaryOperators$$Lambda$2;->arg$1:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava8/util/function/BinaryOperators;->lambda$maxBy$111(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
