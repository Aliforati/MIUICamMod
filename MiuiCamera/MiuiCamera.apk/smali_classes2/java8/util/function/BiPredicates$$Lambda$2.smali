.class public final synthetic Ljava8/util/function/BiPredicates$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BiPredicate;


# instance fields
.field public final arg$1:Ljava8/util/function/BiPredicate;


# direct methods
.method public constructor <init>(Ljava8/util/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/BiPredicates$$Lambda$2;->arg$1:Ljava8/util/function/BiPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/BiPredicates$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/function/BiPredicates$$Lambda$2;-><init>(Ljava8/util/function/BiPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava8/util/function/BiPredicates$$Lambda$2;->arg$1:Ljava8/util/function/BiPredicate;

    invoke-static {v0, p1, p2}, Ljava8/util/function/BiPredicates;->lambda$negate$102(Ljava8/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
