.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TIMBRE_BABY:I = 0x4

.field public static final TIMBRE_GENTLEMEN:I = 0x1

.field public static final TIMBRE_GIRL:I = 0x3

.field public static final TIMBRE_LADY:I = 0x2

.field public static final TIMBRE_ROBOT:I = 0x5

.field public static final timbreTypes:[I


# instance fields
.field public mDescId:I

.field public mIsCompsing:Z

.field public mIsSelected:Z

.field public mResourceId:I

.field public mTimbreId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->timbreTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mTimbreId:I

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mResourceId:I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mDescId:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mIsSelected:Z

    const p1, 0x7f100782

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mDescId:I

    return-void
.end method


# virtual methods
.method public getDescId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mDescId:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mResourceId:I

    return v0
.end method

.method public getTimbreId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mTimbreId:I

    return v0
.end method

.method public isCompsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mIsCompsing:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mIsSelected:Z

    return v0
.end method

.method public setDescId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mDescId:I

    return-void
.end method

.method public setIsCompsing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mIsCompsing:Z

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mResourceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mIsSelected:Z

    return-void
.end method

.method public setTimbreId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->mTimbreId:I

    return-void
.end method
