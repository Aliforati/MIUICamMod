.class public Lcom/android/gallery3d/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageEvent"
.end annotation


# instance fields
.field public stripIndex:I

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    iput p2, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return-void
.end method
