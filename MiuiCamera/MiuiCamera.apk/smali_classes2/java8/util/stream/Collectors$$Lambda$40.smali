.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$40;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$40;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$40;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$40;->instance:Ljava8/util/stream/Collectors$$Lambda$40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$40;->instance:Ljava8/util/stream/Collectors$$Lambda$40;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$summingDouble$31([D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
