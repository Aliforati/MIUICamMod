.class public final Lbq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lai;


# instance fields
.field public final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    iput p2, p0, Lbq;->b:I

    return-void
.end method


# virtual methods
.method public final OooO00o(Lbi;)V
    .locals 2

    iget v0, p0, Lbq;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget p1, p1, Lbi;->e:I

    invoke-static {p1}, Lbh;->OooO00o(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lbh;->a:I

    :goto_0
    add-int/lit8 v0, p1, -0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    throw v1

    :cond_2
    iget p1, p1, Lbi;->d:I

    invoke-static {p1}, Lbh;->OooO00o(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Lbh;->a:I

    :goto_1
    add-int/lit8 v0, p1, -0x2

    if-eqz p1, :cond_4

    :goto_2
    iget-object p1, p0, Lbq;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_4
    throw v1
.end method
