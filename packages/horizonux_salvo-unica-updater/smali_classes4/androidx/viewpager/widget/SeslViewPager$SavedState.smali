.class public Landroidx/viewpager/widget/SeslViewPager$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/viewpager/widget/SeslViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapterState:Landroid/os/Parcelable;

.field public loader:Ljava/lang/ClassLoader;

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3074
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$SavedState$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$SavedState$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # Ljava/lang/ClassLoader;

    .line 3092
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3093
    move-object v0, p2

    .line 3094
    .local v0, "var3":Ljava/lang/ClassLoader;
    if-nez p2, :cond_0

    .line 3095
    const-class v1, Landroidx/viewpager/widget/SeslViewPager$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3098
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    .line 3099
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 3100
    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    .line 3101
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 3104
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3105
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3109
    .local v0, "var1":Ljava/lang/StringBuilder;
    const-string v1, "FragmentPager.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3113
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 3118
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3119
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3120
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3121
    return-void
.end method
