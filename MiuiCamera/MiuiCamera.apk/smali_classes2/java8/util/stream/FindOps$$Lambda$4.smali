.class public final synthetic Ljava8/util/stream/FindOps$$Lambda$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Predicate;


# static fields
.field public static final instance:Ljava8/util/stream/FindOps$$Lambda$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/FindOps$$Lambda$4;

    invoke-direct {v0}, Ljava8/util/stream/FindOps$$Lambda$4;-><init>()V

    sput-object v0, Ljava8/util/stream/FindOps$$Lambda$4;->instance:Ljava8/util/stream/FindOps$$Lambda$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Predicate;
    .locals 1

    sget-object v0, Ljava8/util/stream/FindOps$$Lambda$4;->instance:Ljava8/util/stream/FindOps$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/OptionalDouble;

    invoke-virtual {p1}, Ljava8/util/OptionalDouble;->isPresent()Z

    move-result p1

    return p1
.end method