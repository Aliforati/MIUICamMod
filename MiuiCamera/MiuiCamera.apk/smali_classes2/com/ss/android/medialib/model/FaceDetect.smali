.class public Lcom/ss/android/medialib/model/FaceDetect;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public points:[Landroid/graphics/PointF;

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()[Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-void
.end method
