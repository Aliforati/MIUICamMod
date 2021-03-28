.class public Lcom/android/camera/ui/zoom/ZoomingAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomingAction$Action;
    }
.end annotation


# static fields
.field public static final ZOOMING_BY_PINCH_GESTURE:I = 0x2

.field public static final ZOOMING_BY_SLIDER_BAR:I = 0x3

.field public static final ZOOMING_BY_TOGGLE_BUTTON:I = 0x0

.field public static final ZOOMING_BY_UNKNOWN_SOURCE:I = -0x1

.field public static final ZOOMING_BY_VOLUME_KEY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ZOOMING_BY_SLIDER_BAR"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown zooming action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ZOOMING_BY_PINCH_GESTURE"

    return-object p0

    :cond_2
    const-string p0, "ZOOMING_BY_VOLUME_KEY"

    return-object p0

    :cond_3
    const-string p0, "ZOOMING_BY_TOGGLE_BUTTON"

    return-object p0

    :cond_4
    const-string p0, "ZOOMING_BY_UNKNOWN_SOURCE"

    return-object p0
.end method
