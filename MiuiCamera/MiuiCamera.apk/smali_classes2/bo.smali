.class public final synthetic Lbo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lap;


# instance fields
.field public final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    return-void
.end method


# virtual methods
.method public final OooO00o(I)V
    .locals 3

    iget-object v0, p0, Lbo;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    add-int/lit8 v1, p1, -0x2

    sget v2, Lcom/google/lens/sdk/LensApi;->b:I

    if-eqz p1, :cond_0

    invoke-interface {v0, v1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
