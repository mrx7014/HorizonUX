.class public Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SeslColorPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;,
        Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$ColorPickerDialog;
    }
.end annotation


# static fields
.field private static final KEY_COLOR_SET_LISTENER:Ljava/lang/String; = "color_set_listener"

.field private static final KEY_CURRENT_COLOR:Ljava/lang/String; = "current_color"

.field private static final KEY_OPACITY_BAR_ENABLED:Ljava/lang/String; = "opacity_bar_enabled"

.field private static final KEY_RECENTLY_USED_COLORS:Ljava/lang/String; = "recently_used_colors"

.field private static final TAG:Ljava/lang/String; = "SeslColorPickerDialogFragment"


# instance fields
.field private mAlertDialog:Lcom/samsung/android/ui/app/SeslAlertDialog;

.field private mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mIsTransparencyControlEnabled:Z

.field private mNewColor:Ljava/lang/Integer;

.field private mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

.field private mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

.field private mRecentlyUsedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    .line 49
    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 56
    return-void
.end method

.method public static newInstance(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;)Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    .locals 3
    .param p0, "var0"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    .line 59
    new-instance v0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;-><init>()V

    .line 60
    .local v0, "var1":Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "var2":Landroid/os/Bundle;
    const-string v2, "color_set_listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method public static newInstance(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;I)Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    .locals 4
    .param p0, "var0"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p1, "var1"    # I

    .line 67
    new-instance v0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;-><init>()V

    .line 68
    .local v0, "var2":Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, "var3":Landroid/os/Bundle;
    const-string v2, "color_set_listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "current_color"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method

.method public static newInstance(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;I[I)Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    .locals 4
    .param p0, "var0"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p1, "var1"    # I
    .param p2, "var2"    # [I

    .line 76
    new-instance v0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;-><init>()V

    .line 77
    .local v0, "var3":Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v1, "var4":Landroid/os/Bundle;
    const-string v2, "color_set_listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "current_color"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    const-string v2, "recently_used_colors"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method public static newInstance(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;[I)Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    .locals 3
    .param p0, "var0"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p1, "var1"    # [I

    .line 86
    new-instance v0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;-><init>()V

    .line 87
    .local v0, "var2":Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v1, "var3":Landroid/os/Bundle;
    const-string v2, "color_set_listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    const-string v2, "recently_used_colors"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .line 100
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    .line 101
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->saveSelectedColor()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->isUserInputValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "recently_used_colors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 121
    const-string v0, "current_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 122
    const-string v0, "opacity_bar_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "var6":Landroid/content/Context;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .local v1, "var2":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 131
    .local v2, "var3":Landroid/content/res/Resources$Theme;
    const v3, 0x7f0401ce

    .line 132
    .local v3, "var4":I
    const/4 v4, 0x1

    .line 133
    .local v4, "var5":Z
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 135
    .local v5, "var7":Landroidx/fragment/app/FragmentActivity;
    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_0

    .line 136
    const/4 v4, 0x0

    .line 139
    :cond_0
    new-instance v6, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$ColorPickerDialog;

    invoke-direct {v6, p0, v5, v4}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$ColorPickerDialog;-><init>(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mAlertDialog:Lcom/samsung/android/ui/app/SeslAlertDialog;

    .line 140
    const/4 v7, -0x1

    const v8, 0x7f0f0125

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    iget-object v6, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mAlertDialog:Lcom/samsung/android/ui/app/SeslAlertDialog;

    const/4 v7, -0x2

    const/high16 v8, 0x1040000

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mAlertDialog:Lcom/samsung/android/ui/app/SeslAlertDialog;

    return-object v6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 148
    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0c0090

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "var4":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 151
    const-string v1, "color_set_listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iput-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$OnColorSetListener;

    .line 152
    const-string v1, "current_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 153
    const-string v1, "recently_used_colors"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    iget-boolean v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setOpacityBarEnabled(Z)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateRecentColorLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    iget-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setOnColorChangedListener(Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mAlertDialog:Lcom/samsung/android/ui/app/SeslAlertDialog;

    iget-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setView(Landroid/view/View;)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 180
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    const-string v1, "recently_used_colors"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    const-string v1, "opacity_bar_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/Integer;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    .line 192
    iput-object p1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    .line 193
    return-void
.end method

.method public setTransparencyControlEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    .line 197
    return-void
.end method
