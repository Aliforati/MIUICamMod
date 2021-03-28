.class public final Lcom/xiaomi/engine/BufferFormat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/engine/BufferFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBufferFormat:I

.field public mBufferHeight:I

.field public mBufferWidth:I

.field public mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

.field public mOutputFormat:I

.field public mOutputHeight:I

.field public mOutputWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/engine/BufferFormat$1;

    invoke-direct {v0}, Lcom/xiaomi/engine/BufferFormat$1;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/BufferFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    return-void
.end method

.method public constructor <init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    iput p2, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    iput p3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    iput-object p4, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    iput p2, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    iput p3, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    const-class v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaomi/engine/BufferFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaomi/engine/BufferFormat;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBufferFormat()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    return v0
.end method

.method public getBufferHeight()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    return v0
.end method

.method public getBufferWidth()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    return v0
.end method

.method public getCameraCombinationMode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getCameraCombinationMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-object v0
.end method

.method public getOutputFormat()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    return v0
.end method

.method public setBufferFormat(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    return-void
.end method

.method public setBufferHeight(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    return-void
.end method

.method public setBufferWidth(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    return-void
.end method

.method public setGraphDescriptor(Lcom/xiaomi/engine/GraphDescriptorBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    return-void
.end method

.method public setOutputHeight(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    return-void
.end method

.method public setOutputWidth(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferFormat{inputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", graphDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/engine/BufferFormat;->mOutputFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
