.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$31;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$31;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$31;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$31;->instance:Ljava8/util/stream/Collectors$$Lambda$31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$31;->instance:Ljava8/util/stream/Collectors$$Lambda$31;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [I

    check-cast p2, [I

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors;->lambda$summingInt$22([I[I)[I

    move-result-object p1

    return-object p1
.end method
