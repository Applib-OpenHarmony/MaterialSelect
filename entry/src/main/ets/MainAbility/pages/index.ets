/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {
	MaterialSelect,
	MenuOption,
	MultipleSelect,
	MultipleMenuOption,
	DotMenu,
	DotMenuOption
} from '@ohos/material-select'


@Entry
@Component
struct Index {
	name: string = 'Industry'
	placeholder: string = 'select'
	selectMenu: MenuOption[] = []
	selection: MenuOption = new MenuOption(null, null)
	selectModel: MaterialSelect.Model = new MaterialSelect.Model('Industry', 'sel')
	selectMenuModel: MaterialSelect.MenuModel = new MaterialSelect.MenuModel()
	multipleSelectName: string = 'Use Case'
	multipleSelectMenu: MultipleMenuOption[] = []
	multipleSelectModel: MultipleSelect.Model = new MultipleSelect.Model('Use Case')
	multipleMenuModel: MultipleSelect.MenuModel = new MultipleSelect.MenuModel()
	dotModel: DotMenu.Model = new DotMenu.Model()
	dotMenuModel: DotMenu.MenuModel = new DotMenu.MenuModel()
	dotMenu: DotMenuOption[] = [
		new DotMenuOption('Download', 2, $r('app.media.download')),
		new DotMenuOption('Download', 2, $r('app.media.download')),
		new DotMenuOption('Download', 2, $r('app.media.download')),
		new DotMenuOption(null, null),
		new DotMenuOption(null, null, null),
		new DotMenuOption(null, 1),
		new DotMenuOption('Download', null),
		new DotMenuOption('Download', null, null),
		new DotMenuOption(null, null, $r('app.media.download')),
		new DotMenuOption(null, 2, null),
	]

	aboutToAppear() {
		this.selectModel.setTitle(null)
		this.selectModel.setTitleFontSize(null)
		this.selectModel.setTitleFontColor(null)
		this.selectModel.setHeight(null)
		this.selectModel.setWidth(null)
		this.selectModel.setBackgroundColor(null)
		this.selectModel.setBorderWidth(null)
		this.selectModel.setBorderRadius(null)
		this.selectModel.setBorderColor(null)
		this.selectModel.setUnselectedColor(null)
		this.selectModel.setPadding(null)
		this.selectModel.setFontSize(null)
		this.selectModel.setMargin(null)

		this.selectModel.setPlaceholder(null)
		this.selectModel.setFontSize(null)
		this.selectModel.setFontColor(null)

		this.multipleSelectModel.setTitle(null)
		this.multipleSelectModel.setTitleFontSize(null)
		this.multipleSelectModel.setTitleFontColor(null)
		this.multipleSelectModel.setHeight(null)
		this.multipleSelectModel.setWidth(null)
		this.multipleSelectModel.setBackgroundColor(null)
		this.multipleSelectModel.setBorderWidth(null)
		this.multipleSelectModel.setBorderRadius(null)
		this.multipleSelectModel.setBorderColor(null)
		this.multipleSelectModel.setUnselectedColor(null)
		this.multipleSelectModel.setPadding(null)
		this.multipleSelectModel.setMargin(null)

		this.dotModel.setHeight(null)
		this.dotModel.setWidth(null)
		this.dotModel.setBackgroundColor(null)
		this.dotModel.setMargin(null)

		this.selectMenuModel.setHeight(null)
		this.selectMenuModel.setWidth(null)
		this.selectMenuModel.setFontSize(null)
		this.selectMenuModel.setFontColor(null)
		this.selectMenuModel.setBorderRadius(null)
		this.selectMenuModel.setPadding(null)

		this.multipleMenuModel.setHeight(null)
		this.multipleMenuModel.setWidth(null)
		this.multipleMenuModel.setFontSize(null)
		this.multipleMenuModel.setFontColor(null)
		this.multipleMenuModel.setBorderRadius(null)
		this.multipleMenuModel.setPadding(null)

		this.multipleMenuModel.setCheckColor(null)
		this.multipleMenuModel.setCheckBoxHeight(null)
		this.multipleMenuModel.setCheckBoxWidth(null)

		this.dotMenuModel.setHeight(null)
		this.dotMenuModel.setWidth(null)
		this.dotMenuModel.setFontSize(null)
		this.dotMenuModel.setFontColor(null)
		this.dotMenuModel.setBorderRadius(null)
		this.dotMenuModel.setPadding(null)

		this.dotMenuModel.setIconHeight(null)
		this.dotMenuModel.setIconWidth(null)

		this.dotMenu[0].setValue(null)
		this.dotMenu[1].setId(null)
		this.dotMenu[2].setIcon(null)

		for (let i = 0; i <= 1; i++) {
			this.selectMenu.push(new MenuOption('Option ' + i, i))
		}

		this.selectMenu[0].setValue(null)
		this.selectMenu[1].setId(null)

		this.selectMenu.push(new MenuOption(null, null))
		this.selectMenu.push(new MenuOption('a', null))
		this.selectMenu.push(new MenuOption(null, 50))

		let options = [true, false, true]
		options.forEach((c, i) => {
			this.multipleSelectMenu.push(new MultipleMenuOption('Option ' + i, i, c))
		})

		this.multipleSelectMenu[0].setValue(null)
		this.multipleSelectMenu[1].setId(null)
		this.multipleSelectMenu[2].setChecked(null)

		this.multipleSelectMenu.push(new MultipleMenuOption(null, null))
		this.multipleSelectMenu.push(new MultipleMenuOption(null, null, null))
		this.multipleSelectMenu.push(new MultipleMenuOption('a', null))
		this.multipleSelectMenu.push(new MultipleMenuOption(null, 10))
		this.multipleSelectMenu.push(new MultipleMenuOption('a', null, null))
		this.multipleSelectMenu.push(new MultipleMenuOption(null, 11, null))
		this.multipleSelectMenu.push(new MultipleMenuOption(null, null, false))
		this.multipleSelectMenu.push(new MultipleMenuOption(null, null, true))
	}

	build() {
		Column() {
			Column({ space: '10vp' }) {
				Row({ space: '10vp' }) {
					MaterialSelect({
						menu: this.selectMenu,
						onSelect: (it: MenuOption) => {
							console.log(it.getValue())
						},
						model: this.selectModel,
						menuModel: this.selectMenuModel,
					})
					MultipleSelect({
						menu: this.multipleSelectMenu,
						onSelect: (itL: MultipleMenuOption[]) => {
							itL.forEach((it) => {
								console.log(it.getValue())
							})
						},
						model: this.multipleSelectModel,
						menuModel: this.multipleMenuModel
					})
				}

				Column({ space: '10vp' }) {
					Flex({ justifyContent: FlexAlign.SpaceBetween }) {
						Text('File')
							.fontSize('18vp')
							.fontWeight(FontWeight.Bold)
						DotMenu({
							menu: this.dotMenu,
							onSelect: (it: DotMenuOption) => {
								console.log(it.getId() + ' ' + it.getValue())
							},
							model: this.dotModel,
							menuModel: this.dotMenuModel
						})
					}

					Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris accumsan mi ligula. Sed mollis augue vel dolor hendrerit maximus. Vestibulum mollis euismod ornare. Curabitur eleifend pretium fermentum. Donec eget ipsum sed felis ultricies iaculis in et dolor. Phasellus in velit efficitur, fermentum ante sed, volutpat sem. In tempus lobortis lacinia. Proin a tincidunt justo.')
						.fontSize('14vp')
						.fontColor('#9CA2C7')
						.maxLines(2)
						.textOverflow({ overflow: TextOverflow.Ellipsis })
				}
				.width('200vp')
				.padding('5vp')
				.borderWidth('1vp')
				.borderRadius('4vp')
			}
			.width('200vp')
			.margin({ left: '10vp', right: '10vp', top: '10vp', bottom: '10vp' })

			Column({ space: '10vp' }) {
				Row({ space: '10vp' }) {
					MaterialSelect({
						menu: null,
						onSelect: null,
						model: this.selectModel,
						menuModel: this.selectMenuModel,
					})
					MultipleSelect({
						menu: [],
						onSelect: null,
						model: this.multipleSelectModel,
						menuModel: this.multipleMenuModel
					})
				}

				Column({ space: '10vp' }) {
					Flex({ justifyContent: FlexAlign.SpaceBetween }) {
						Text('File')
							.fontSize('18vp')
							.fontWeight(FontWeight.Bold)
						DotMenu({
							menu: null,
							onSelect: null,
							model: this.dotModel,
							menuModel: this.dotMenuModel
						})
					}

					Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris accumsan mi ligula. Sed mollis augue vel dolor hendrerit maximus. Vestibulum mollis euismod ornare. Curabitur eleifend pretium fermentum. Donec eget ipsum sed felis ultricies iaculis in et dolor. Phasellus in velit efficitur, fermentum ante sed, volutpat sem. In tempus lobortis lacinia. Proin a tincidunt justo.')
						.fontSize('14vp')
						.fontColor('#9CA2C7')
						.maxLines(2)
						.textOverflow({ overflow: TextOverflow.Ellipsis })
				}
				.width('200vp')
				.padding('5vp')
				.borderWidth('1vp')
				.borderRadius('4vp')
			}
			.width('200vp')
			.margin({ left: '10vp', right: '10vp', top: '10vp', bottom: '10vp' })

			Column({ space: '10vp' }) {
				Row({ space: '10vp' }) {
					MaterialSelect({
						menu: [
							new MenuOption('Option 1', 1),
							new MenuOption('Option 2', 2),
							new MenuOption('Option 3', 3),
						],
						onSelect: (it: MenuOption) => {
							console.log(it.getValue() + ' ' + it.getId())
						},
						model: this.selectModel,
						menuModel: this.selectMenuModel,
					})
					MultipleSelect({
						menu: [
							new MultipleMenuOption('Option 1', 1),
							new MultipleMenuOption('Option 2', 2),
							new MultipleMenuOption('Option 3', 3),
						],
						onSelect: (it: MultipleMenuOption[]) => {
							it.forEach(c => console.log(c.getValue() + ' ' + c.getId() + ' ' + c.getChecked()))
						},
						model: this.multipleSelectModel,
						menuModel: this.multipleMenuModel
					})
				}

				Column({ space: '10vp' }) {
					Flex({ justifyContent: FlexAlign.SpaceBetween }) {
						Text('File')
							.fontSize('18vp')
							.fontWeight(FontWeight.Bold)
						DotMenu({
							menu: [
								new DotMenuOption('Preview', 1, $r('app.media.preview')),
								new DotMenuOption('Download', 2, $r('app.media.download')),
								new DotMenuOption('Remove', 3, $r('app.media.remove')),
							],
							onSelect: (it: DotMenuOption) => {
								console.log(it.getValue() + ' ' + it.getId() + ' ' + it.getIcon())
							},
							model: this.dotModel,
							menuModel: this.dotMenuModel
						})
					}

					Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris accumsan mi ligula. Sed mollis augue vel dolor hendrerit maximus. Vestibulum mollis euismod ornare. Curabitur eleifend pretium fermentum. Donec eget ipsum sed felis ultricies iaculis in et dolor. Phasellus in velit efficitur, fermentum ante sed, volutpat sem. In tempus lobortis lacinia. Proin a tincidunt justo.')
						.fontSize('14vp')
						.fontColor('#9CA2C7')
						.maxLines(2)
						.textOverflow({ overflow: TextOverflow.Ellipsis })
				}
				.width('200vp')
				.padding('5vp')
				.borderWidth('1vp')
				.borderRadius('4vp')
			}
			.width('200vp')
			.margin({ left: '10vp', right: '10vp', top: '10vp', bottom: '10vp' })
		}
	}
}