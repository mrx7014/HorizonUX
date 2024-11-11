.class public Lcom/samsung/android/ui/app/SeslAlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SeslAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Lcom/samsung/android/ui/app/SeslAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 54
    invoke-static {p1, p2}, Lcom/samsung/android/ui/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/ui/app/SeslAlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setCancelable(Z)V

    .line 61
    invoke-virtual {p0, p3}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .line 66
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 67
    return p1

    .line 69
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f04002c

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertController;->installContent()V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/app/SeslAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/app/SeslAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setButtonPanelLayoutHint(I)V

    .line 107
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(I)V

    .line 123
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 131
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(I)V

    .line 133
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController;->setView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setView(Landroid/view/View;IIII)V

    .line 103
    return-void
.end method
