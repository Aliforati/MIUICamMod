.class public Lmiuix/core/util/Utf8TextUtils$CharRange;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Utf8TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharRange"
.end annotation


# instance fields
.field public length:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    iput p1, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iput p2, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 2

    iget v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iget v1, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
