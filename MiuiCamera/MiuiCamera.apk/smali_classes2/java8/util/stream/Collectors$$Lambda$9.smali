.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$9;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$9;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$9;->instance:Ljava8/util/stream/Collectors$$Lambda$9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$9;->instance:Ljava8/util/stream/Collectors$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors;->lambda$toList$5(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
