.class public final Lcom/google/zxing/datamatrix/decoder/Version$ECB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field public final count:I

.field public final dataCodewords:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    return v0
.end method

.method public getDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    return v0
.end method
