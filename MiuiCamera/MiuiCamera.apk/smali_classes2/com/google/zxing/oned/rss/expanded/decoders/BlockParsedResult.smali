.class public final Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

.field public final finished:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-void
.end method


# virtual methods
.method public getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    return v0
.end method
